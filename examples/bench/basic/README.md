# Benchmark Example

Benchmark run from 2019-12-29 11:41:32.981035Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">16 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.9.2</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">22.0</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">10 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">20 ms</td>
  </tr>
</table>

## Statistics

__Input: long_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">867.49</td>
    <td style="white-space: nowrap; text-align: right">1.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±25.94%</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">1.67 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">444.89</td>
    <td style="white-space: nowrap; text-align: right">2.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±37.18%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">2.97 ms</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap;text-align: right">867.49</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">444.89</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">781.25 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">625 KB</td>
    <td>0.8x</td>
  </tr>
</table>
<hr/>
__Input: short_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.03 M</td>
    <td style="white-space: nowrap; text-align: right">0.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±212.76%</td>
    <td style="white-space: nowrap; text-align: right">0.97 μs</td>
    <td style="white-space: nowrap; text-align: right">2.97 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">0.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±194.99%</td>
    <td style="white-space: nowrap; text-align: right">0.97 μs</td>
    <td style="white-space: nowrap; text-align: right">1.97 μs</td>
  </tr>
</table>
Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap;text-align: right">1.03 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">0.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>
</table>
Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">800 B</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">640 B</td>
    <td>0.8x</td>
  </tr>
</table>
<hr/>
